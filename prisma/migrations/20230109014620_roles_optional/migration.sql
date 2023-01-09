-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Veteran" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "bio" TEXT,
    "role_id" INTEGER,
    "whatsapp" TEXT,
    "messageOnSwipeRight" TEXT,
    "messageOnSwipeLeft" TEXT,
    CONSTRAINT "Veteran_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "Roles" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO "new_Veteran" ("bio", "id", "messageOnSwipeLeft", "messageOnSwipeRight", "name", "role_id", "whatsapp") SELECT "bio", "id", "messageOnSwipeLeft", "messageOnSwipeRight", "name", "role_id", "whatsapp" FROM "Veteran";
DROP TABLE "Veteran";
ALTER TABLE "new_Veteran" RENAME TO "Veteran";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
