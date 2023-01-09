-- CreateTable
CREATE TABLE "Veteran" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "bio" TEXT,
    "whatsapp" TEXT
);

-- CreateTable
CREATE TABLE "Freshman" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "email" TEXT NOT NULL,
    "name" TEXT,
    "preferred_veteran_id" INTEGER,
    CONSTRAINT "Freshman_preferred_veteran_id_fkey" FOREIGN KEY ("preferred_veteran_id") REFERENCES "Veteran" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "VeteransToFreshman" (
    "veteran_id" INTEGER NOT NULL,
    "freshman_id" INTEGER NOT NULL,

    PRIMARY KEY ("veteran_id", "freshman_id"),
    CONSTRAINT "VeteransToFreshman_veteran_id_fkey" FOREIGN KEY ("veteran_id") REFERENCES "Veteran" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "VeteransToFreshman_freshman_id_fkey" FOREIGN KEY ("freshman_id") REFERENCES "Freshman" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "Freshman_email_key" ON "Freshman"("email");
