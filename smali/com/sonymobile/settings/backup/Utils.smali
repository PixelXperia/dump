.class public Lcom/sonymobile/settings/backup/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static SOMC_BACKUP_PROVIDER_COLUMNS:[Ljava/lang/String;

.field private static final SOMC_BACKUP_PROVIDER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "content://com.sonymobile.synchub.provider"

    .line 35
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/backup/Utils;->SOMC_BACKUP_PROVIDER_URI:Landroid/net/Uri;

    const-string v1, "auto_backup_status"

    const-string v2, "next_auto_backup_time"

    const-string v3, "last_successful_backup_time"

    const-string v4, "last_unsuccessful_backup_location"

    const-string v5, "last_unsuccessful_backup_reason"

    const-string v6, "unsuccessful_backup_content"

    const-string v7, "waiting_for_backup_condition"

    const-string v8, "new_backup_performed"

    .line 36
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/backup/Utils;->SOMC_BACKUP_PROVIDER_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public static getAutoBackupIntent()Landroid/content/Intent;
    .locals 3

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.synchub.LAUNCH_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "fragmentId"

    const/4 v2, 0x1

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getBackupEditIntent()Landroid/content/Intent;
    .locals 3

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.synchub.LAUNCH_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "fragmentId"

    const/4 v2, 0x3

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getBackupInfo(Landroid/content/Context;)Lcom/sonymobile/settings/backup/BackupInfo;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 98
    :cond_0
    new-instance v1, Lcom/sonymobile/settings/backup/BackupInfo;

    invoke-direct {v1}, Lcom/sonymobile/settings/backup/BackupInfo;-><init>()V

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/settings/backup/Utils;->SOMC_BACKUP_PROVIDER_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sonymobile/settings/backup/Utils;->SOMC_BACKUP_PROVIDER_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 106
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 107
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/backup/BackupInfo;->setAutoBackupOn(Z)V

    .line 108
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sonymobile/settings/backup/BackupInfo;->setNextAutoBackupTime(J)V

    const/4 v2, 0x2

    .line 109
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sonymobile/settings/backup/BackupInfo;->setLastBackupTime(J)V

    const/4 v2, 0x3

    .line 110
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/backup/BackupInfo;->setLastUnsuccessfulBackupLocation(I)V

    const/4 v2, 0x4

    .line 111
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/backup/BackupInfo;->setLastUnsuccessfulBackupReason(I)V

    const/4 v2, 0x5

    .line 112
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/backup/BackupInfo;->setContentTypeIds(Ljava/lang/String;)V

    const/4 v2, 0x6

    .line 113
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/backup/BackupInfo;->setWaitingForBackupCondition(I)V

    const/4 v2, 0x7

    .line 114
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_3

    move v0, v3

    :cond_3
    invoke-virtual {v1, v0}, Lcom/sonymobile/settings/backup/BackupInfo;->setIsNewBackup(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getBackupMoreIntent()Landroid/content/Intent;
    .locals 3

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.synchub.LAUNCH_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "fragmentId"

    const/4 v2, 0x7

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getLastBackupString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/sonymobile/settings/backup/Utils;->midnightsBetween(JJ)I

    move-result p1

    if-gez p1, :cond_0

    const p1, 0x7f121121

    .line 160
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    const p1, 0x7f1210f7

    .line 162
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    const p1, 0x7f1210f8

    .line 164
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const v0, 0x7f1210f6

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 166
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNextBackupString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/sonymobile/settings/backup/Utils;->midnightsBetween(JJ)I

    move-result p1

    if-gez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1210fb

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1210fc

    .line 145
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 147
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1210fa

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 148
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    .line 147
    invoke-virtual {p0, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRestoreDataIntent()Landroid/content/Intent;
    .locals 4

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isForRestore"

    const/4 v2, 0x1

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonymobile.synchub.LAUNCH_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "fragmentId"

    const/4 v3, 0x3

    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "fragmentExtras"

    .line 77
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v1
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "somc_backup"

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static isSomcBackupAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.synchub.LAUNCH_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static midnightsBetween(JJ)I
    .locals 1

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 178
    invoke-static {v0}, Lcom/sonymobile/settings/backup/Utils;->setToMidnight(Ljava/util/Calendar;)V

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 181
    invoke-virtual {p0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 182
    invoke-static {p0}, Lcom/sonymobile/settings/backup/Utils;->setToMidnight(Ljava/util/Calendar;)V

    .line 184
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    sub-long/2addr p0, p2

    const-wide/32 p2, 0x5265c00

    .line 185
    div-long/2addr p0, p2

    long-to-int p0, p0

    return p0
.end method

.method public static persistShowInitialWelcomeCard(Landroid/content/Context;Z)V
    .locals 1

    .line 61
    invoke-static {p0}, Lcom/sonymobile/settings/backup/Utils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "show_welcome_card"

    .line 62
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static resetNewBackupPerformed(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 127
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "new_backup_performed"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/sonymobile/settings/backup/Utils;->SOMC_BACKUP_PROVIDER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static setToMidnight(Ljava/util/Calendar;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 194
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 195
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 196
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 197
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public static showInitialWelcomeCard(Landroid/content/Context;)Z
    .locals 2

    .line 57
    invoke-static {p0}, Lcom/sonymobile/settings/backup/Utils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "show_welcome_card"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
