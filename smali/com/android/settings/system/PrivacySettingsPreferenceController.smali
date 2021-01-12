.class public Lcom/android/settings/system/PrivacySettingsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PrivacySettingsPreferenceController.java"


# instance fields
.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "user"

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/system/PrivacySettingsPreferenceController;->mUm:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/settings/system/PrivacySettingsPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sonymobile/settings/backup/Utils;->isSomcBackupAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/settings/backup/Utils;->getBackupInfo(Landroid/content/Context;)Lcom/sonymobile/settings/backup/BackupInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0}, Lcom/sonymobile/settings/backup/BackupInfo;->isAutoBackupOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v0}, Lcom/sonymobile/settings/backup/BackupInfo;->getNextAutoBackupTime()J

    move-result-wide v0

    .line 38
    invoke-static {p0, v0, v1}, Lcom/sonymobile/settings/backup/Utils;->getNextBackupString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p0, 0x7f1210cc

    .line 41
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    :goto_0
    return-void
.end method
