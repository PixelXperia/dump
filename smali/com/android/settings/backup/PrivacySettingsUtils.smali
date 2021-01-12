.class public Lcom/android/settings/backup/PrivacySettingsUtils;
.super Ljava/lang/Object;
.source "PrivacySettingsUtils.java"


# direct methods
.method private static getInvisibleKey(Landroid/content/Context;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "backup"

    .line 73
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 76
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "PrivacySettingsUtils"

    const-string v2, "Failed querying backup manager service activity status. Assuming it is inactive."

    .line 78
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 81
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.settings"

    .line 82
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 83
    :cond_0
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const-string v3, "backup_inactive"

    .line 85
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_2
    new-instance v3, Lcom/android/settings/backup/BackupSettingsHelper;

    invoke-direct {v3, p0}, Lcom/android/settings/backup/BackupSettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/settings/backup/BackupSettingsHelper;->isIntentProvidedByTransport()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "backup_settings"

    .line 89
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v1, :cond_4

    .line 92
    invoke-static {p0}, Lcom/sonymobile/settings/backup/Utils;->isSomcBackupAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "backup_data"

    .line 93
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "auto_restore"

    .line 94
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "configure_account"

    .line 95
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_5
    invoke-static {p0}, Lcom/sonymobile/settings/backup/Utils;->isSomcBackupAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "somc_backup_category"

    .line 98
    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "somc_automatic_backup"

    .line 99
    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "somc_restore_data"

    .line 100
    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "somc_backup_more"

    .line 101
    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v2
.end method

.method static isAdminUser(Landroid/content/Context;)Z
    .locals 0

    .line 53
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    return p0
.end method

.method static isInvisibleKey(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 60
    invoke-static {p0}, Lcom/android/settings/backup/PrivacySettingsUtils;->getInvisibleKey(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "PrivacySettingsUtils"

    const/4 v1, 0x3

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keysToRemove size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " keysToRemove="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static updatePrivacyBuffer(Landroid/content/Context;Lcom/android/settings/backup/PrivacySettingsConfigData;)V
    .locals 4

    const-string v0, "backup"

    .line 108
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 111
    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/settings/backup/PrivacySettingsConfigData;->setBackupEnabled(Z)V

    .line 112
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "config"

    .line 113
    invoke-static {p0, v2, v3}, Lcom/android/settings/backup/PrivacySettingsUtils;->validatedActivityIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/backup/PrivacySettingsConfigData;->setConfigIntent(Landroid/content/Intent;)V

    .line 115
    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/backup/PrivacySettingsConfigData;->setConfigSummary(Ljava/lang/String;)V

    .line 117
    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "management"

    .line 116
    invoke-static {p0, v2, v3}, Lcom/android/settings/backup/PrivacySettingsUtils;->validatedActivityIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/backup/PrivacySettingsConfigData;->setManageIntent(Landroid/content/Intent;)V

    .line 119
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-interface {v0, p0, v1}, Landroid/app/backup/IBackupManager;->getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 118
    invoke-virtual {p1, p0}, Lcom/android/settings/backup/PrivacySettingsConfigData;->setManageLabel(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 120
    invoke-virtual {p1, p0}, Lcom/android/settings/backup/PrivacySettingsConfigData;->setBackupGray(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x1

    .line 124
    invoke-virtual {p1, p0}, Lcom/android/settings/backup/PrivacySettingsConfigData;->setBackupGray(Z)V

    :goto_0
    return-void
.end method

.method private static validatedActivityIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 133
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Backup "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " intent "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " fails to resolve; ignoring"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PrivacySettingsUtils"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method
