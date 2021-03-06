CREATE TABLE "RULES_PROFILES"(
    "ID" INTEGER NOT NULL AUTO_INCREMENT (1,1),
    "UUID" VARCHAR(40) NOT NULL,
    "NAME" VARCHAR(100) NOT NULL,
    "LANGUAGE" VARCHAR(20),
    "KEE" VARCHAR(255) NOT NULL,
    "IS_BUILT_IN" BOOLEAN NOT NULL,
    "RULES_UPDATED_AT" VARCHAR(100),
    "CREATED_AT" TIMESTAMP,
    "UPDATED_AT" TIMESTAMP
);
ALTER TABLE "RULES_PROFILES" ADD CONSTRAINT "PK_RULES_PROFILES" PRIMARY KEY("ID");
CREATE UNIQUE INDEX "UNIQ_QPROF_KEY" ON "RULES_PROFILES"("KEE");

CREATE TABLE "QPROFILE_CHANGES"(
    "KEE" VARCHAR(40) NOT NULL,
    "RULES_PROFILE_UUID" VARCHAR(255) NOT NULL,
    "CHANGE_TYPE" VARCHAR(20) NOT NULL,
    "USER_UUID" VARCHAR(255),
    "CHANGE_DATA" CLOB(2147483647),
    "CREATED_AT" BIGINT NOT NULL
);
ALTER TABLE "QPROFILE_CHANGES" ADD CONSTRAINT "PK_QPROFILE_CHANGES" PRIMARY KEY("KEE");
CREATE INDEX "QP_CHANGES_RULES_PROFILE_UUID" ON "QPROFILE_CHANGES"("RULES_PROFILE_UUID");
