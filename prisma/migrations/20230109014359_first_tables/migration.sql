-- CreateTable
CREATE TABLE "Veteran" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "bio" TEXT,
    "role_id" INTEGER NOT NULL,
    "whatsapp" TEXT,
    "messageOnSwipeRight" TEXT,
    "messageOnSwipeLeft" TEXT,
    CONSTRAINT "Veteran_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "Roles" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Freshman" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT
);

-- CreateTable
CREATE TABLE "VeteransToFreshman" (
    "veteran_id" INTEGER NOT NULL,
    "freshman_id" INTEGER NOT NULL,

    PRIMARY KEY ("veteran_id", "freshman_id"),
    CONSTRAINT "VeteransToFreshman_veteran_id_fkey" FOREIGN KEY ("veteran_id") REFERENCES "Veteran" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "VeteransToFreshman_freshman_id_fkey" FOREIGN KEY ("freshman_id") REFERENCES "Freshman" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Roles" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "role" TEXT NOT NULL
);
