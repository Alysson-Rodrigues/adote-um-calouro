/*
  Warnings:

  - You are about to drop the column `preferred_veteran_id` on the `Freshman` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Freshman" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "email" TEXT NOT NULL,
    "name" TEXT
);
INSERT INTO "new_Freshman" ("email", "id", "name") SELECT "email", "id", "name" FROM "Freshman";
DROP TABLE "Freshman";
ALTER TABLE "new_Freshman" RENAME TO "Freshman";
CREATE UNIQUE INDEX "Freshman_email_key" ON "Freshman"("email");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
