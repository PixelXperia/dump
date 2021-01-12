.class Lcom/android/settings/backup/PrivacySettings$3;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/backup/PrivacySettings;->updateSomcBackup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/backup/PrivacySettings;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$somcBackupCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings/backup/PrivacySettings;Landroid/content/Context;Landroidx/preference/PreferenceCategory;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/android/settings/backup/PrivacySettings$3;->this$0:Lcom/android/settings/backup/PrivacySettings;

    iput-object p2, p0, Lcom/android/settings/backup/PrivacySettings$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/backup/PrivacySettings$3;->val$somcBackupCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept()V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/android/settings/backup/PrivacySettings$3;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/settings/backup/Utils;->persistShowInitialWelcomeCard(Landroid/content/Context;Z)V

    .line 268
    iget-object v0, p0, Lcom/android/settings/backup/PrivacySettings$3;->val$somcBackupCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/backup/PrivacySettings$3;->this$0:Lcom/android/settings/backup/PrivacySettings;

    invoke-static {p0}, Lcom/android/settings/backup/PrivacySettings;->access$000(Lcom/android/settings/backup/PrivacySettings;)Lcom/sonymobile/settings/backup/BackupCardPreference;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method
