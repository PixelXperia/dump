.class public Lcom/android/settings/backup/PrivacySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PrivacySettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

.field private mSomcAutoBackup:Landroidx/preference/Preference;

.field private mSomcBackupAvailable:Z

.field private mSomcBackupMore:Landroidx/preference/Preference;

.field private mSomcRestoreData:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Lcom/android/settings/backup/PrivacySettings$1;

    invoke-direct {v0}, Lcom/android/settings/backup/PrivacySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/backup/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/backup/PrivacySettings;)Lcom/sonymobile/settings/backup/BackupCardPreference;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/backup/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    return-object p0
.end method

.method private initSomcBackupUI(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "somc_backup_card"

    .line 159
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/backup/BackupCardPreference;

    iput-object v0, p0, Lcom/android/settings/backup/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    const-string v0, "somc_automatic_backup"

    .line 160
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcAutoBackup:Landroidx/preference/Preference;

    const-string v0, "somc_restore_data"

    .line 161
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcRestoreData:Landroidx/preference/Preference;

    const-string v0, "somc_backup_more"

    .line 162
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcBackupMore:Landroidx/preference/Preference;

    .line 164
    invoke-static {p1}, Lcom/sonymobile/settings/backup/Utils;->isSomcBackupAvailable(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcBackupAvailable:Z

    .line 166
    iget-boolean p1, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcBackupAvailable:Z

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcAutoBackup:Landroidx/preference/Preference;

    invoke-static {}, Lcom/sonymobile/settings/backup/Utils;->getAutoBackupIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 168
    iget-object p1, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcRestoreData:Landroidx/preference/Preference;

    invoke-static {}, Lcom/sonymobile/settings/backup/Utils;->getRestoreDataIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 169
    iget-object p0, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcBackupMore:Landroidx/preference/Preference;

    invoke-static {}, Lcom/sonymobile/settings/backup/Utils;->getBackupMoreIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "somc_backup_category"

    .line 171
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 173
    iget-object p0, p0, Lcom/android/settings/backup/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private updatePrivacySettingsConfigData(Landroid/content/Context;)V
    .locals 0

    .line 110
    invoke-static {p1}, Lcom/android/settings/backup/PrivacySettingsUtils;->isAdminUser(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 112
    invoke-static {}, Lcom/android/settings/backup/PrivacySettingsConfigData;->getInstance()Lcom/android/settings/backup/PrivacySettingsConfigData;

    move-result-object p0

    .line 111
    invoke-static {p1, p0}, Lcom/android/settings/backup/PrivacySettingsUtils;->updatePrivacyBuffer(Landroid/content/Context;Lcom/android/settings/backup/PrivacySettingsConfigData;)V

    :cond_0
    return-void
.end method

.method private updateSomcBackup()V
    .locals 7

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 179
    iget-boolean v1, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcBackupAvailable:Z

    if-eqz v1, :cond_f

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "somc_backup_category"

    .line 183
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    .line 185
    invoke-static {v0}, Lcom/sonymobile/settings/backup/Utils;->getBackupInfo(Landroid/content/Context;)Lcom/sonymobile/settings/backup/BackupInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 187
    iget-object p0, p0, Lcom/android/settings/backup/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 191
    :cond_1
    iget-object v3, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcBackupMore:Landroidx/preference/Preference;

    const v4, 0x7f1210db

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(I)V

    .line 194
    invoke-virtual {v2}, Lcom/sonymobile/settings/backup/BackupInfo;->getNextAutoBackupTime()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/sonymobile/settings/backup/Utils;->getNextBackupString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 195
    iget-object v4, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcAutoBackup:Landroidx/preference/Preference;

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v2}, Lcom/sonymobile/settings/backup/BackupInfo;->isAutoBackupOn()Z

    move-result v3

    if-nez v3, :cond_2

    .line 198
    iget-object v3, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcAutoBackup:Landroidx/preference/Preference;

    const v4, 0x7f1210cb

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 199
    :cond_2
    invoke-virtual {v2}, Lcom/sonymobile/settings/backup/BackupInfo;->getWaitingForBackupCondition()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq v3, v4, :cond_8

    .line 201
    invoke-virtual {v2}, Lcom/sonymobile/settings/backup/BackupInfo;->getWaitingForBackupCondition()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    if-eq v3, v6, :cond_5

    if-eq v3, v5, :cond_4

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 215
    :cond_3
    iget-object v3, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcAutoBackup:Landroidx/preference/Preference;

    const v4, 0x7f1210d4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 212
    :cond_4
    iget-object v3, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcAutoBackup:Landroidx/preference/Preference;

    const v4, 0x7f1210d5

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 209
    :cond_5
    iget-object v3, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcAutoBackup:Landroidx/preference/Preference;

    const v4, 0x7f1210d3

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 206
    :cond_6
    iget-object v3, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcAutoBackup:Landroidx/preference/Preference;

    const v4, 0x7f1210d6

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 203
    :cond_7
    iget-object v3, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcAutoBackup:Landroidx/preference/Preference;

    const v4, 0x7f1210d2

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 221
    :cond_8
    invoke-virtual {v2}, Lcom/sonymobile/settings/backup/BackupInfo;->getLastUnsuccessfulBackupReason()I

    move-result v3

    if-eqz v3, :cond_b

    .line 223
    invoke-virtual {v2}, Lcom/sonymobile/settings/backup/BackupInfo;->getLastUnsuccessfulBackupReason()I

    move-result v3

    if-eq v3, v6, :cond_a

    if-eq v3, v5, :cond_9

    const/16 v4, 0xd

    if-eq v3, v4, :cond_a

    goto :goto_0

    .line 230
    :cond_9
    iget-object v3, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcAutoBackup:Landroidx/preference/Preference;

    const v4, 0x7f1210d7

    .line 231
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 227
    :cond_a
    iget-object v3, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcAutoBackup:Landroidx/preference/Preference;

    const v4, 0x7f1210d8

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(I)V

    .line 238
    :cond_b
    :goto_0
    invoke-virtual {v2}, Lcom/sonymobile/settings/backup/BackupInfo;->getLastBackupTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_c

    .line 239
    invoke-virtual {v2}, Lcom/sonymobile/settings/backup/BackupInfo;->getLastBackupTime()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/sonymobile/settings/backup/Utils;->getLastBackupString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 240
    iget-object v4, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcRestoreData:Landroidx/preference/Preference;

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 242
    :cond_c
    iget-object v3, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcRestoreData:Landroidx/preference/Preference;

    const v4, 0x7f121121

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(I)V

    .line 245
    :goto_1
    invoke-virtual {v2}, Lcom/sonymobile/settings/backup/BackupInfo;->hasRelevantErrors()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 246
    iget-object v3, p0, Lcom/android/settings/backup/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    invoke-virtual {v3, v2}, Lcom/sonymobile/settings/backup/BackupCardPreference;->update(Lcom/sonymobile/settings/backup/BackupInfo;)V

    .line 247
    iget-object v2, p0, Lcom/android/settings/backup/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    new-instance v3, Lcom/android/settings/backup/PrivacySettings$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/backup/PrivacySettings$2;-><init>(Lcom/android/settings/backup/PrivacySettings;Landroid/content/Context;Landroidx/preference/PreferenceCategory;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/backup/BackupCardPreference;->setListener(Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;)V

    goto :goto_2

    .line 261
    :cond_d
    invoke-static {v0}, Lcom/sonymobile/settings/backup/Utils;->showInitialWelcomeCard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 262
    iget-object v2, p0, Lcom/android/settings/backup/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    invoke-virtual {v2}, Lcom/sonymobile/settings/backup/BackupCardPreference;->showWelcome()V

    .line 263
    iget-object v2, p0, Lcom/android/settings/backup/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/backup/BackupCardPreference;->update(Lcom/sonymobile/settings/backup/BackupInfo;)V

    .line 264
    iget-object v2, p0, Lcom/android/settings/backup/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    new-instance v3, Lcom/android/settings/backup/PrivacySettings$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/backup/PrivacySettings$3;-><init>(Lcom/android/settings/backup/PrivacySettings;Landroid/content/Context;Landroidx/preference/PreferenceCategory;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/backup/BackupCardPreference;->setListener(Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;)V

    goto :goto_2

    .line 277
    :cond_e
    iget-object p0, p0, Lcom/android/settings/backup/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_f
    :goto_2
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const p0, 0x7f1208a4

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PrivacySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x51

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f15008a

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/backup/PrivacySettings;->updatePrivacySettingsConfigData(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/backup/PrivacySettings;->initSomcBackupUI(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V

    .line 94
    iget-boolean v0, p0, Lcom/android/settings/backup/PrivacySettings;->mSomcBackupAvailable:Z

    if-eqz v0, :cond_0

    const-string v0, "backup_category"

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    if-eqz p0, :cond_0

    .line 98
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 150
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 155
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/backup/PrivacySettingsUtils;->isAdminUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/android/settings/backup/PrivacySettings;->updateSomcBackup()V

    :cond_0
    return-void
.end method

.method protected updatePreferenceStates()V
    .locals 1

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/backup/PrivacySettings;->updatePrivacySettingsConfigData(Landroid/content/Context;)V

    .line 106
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
