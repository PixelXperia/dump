.class public Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ScreenSyncPreferenceController.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mIsLockTypeSensitive:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mShouldOverrideText:Z

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->mUserId:I

    .line 42
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    .line 44
    invoke-interface {v0, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->isLockTypeSensitive(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->mIsLockTypeSensitive:Z

    .line 47
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->shouldOverrideText(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->mShouldOverrideText:Z

    .line 48
    sget-boolean p1, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->DBG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsLockTypeSensitive="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->mIsLockTypeSensitive:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenSyncPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getBooleanResouceFromLockPkg(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    const-string p0, "ScreenSyncPreferenceController"

    const-string v0, "com.sonymobile.nfc.clfstate"

    .line 113
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "bool"

    .line 115
    invoke-virtual {p1, p2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 119
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    .line 117
    :cond_0
    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string p2, "resource ID is 0"

    invoke-direct {p1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 124
    sget-boolean p2, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->DBG:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package not found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p3

    :catch_1
    move-exception p1

    .line 121
    sget-boolean p2, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->DBG:Z

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resource not found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p3
.end method

.method private isLockTypeSensitive(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "screen_lock_type_sensitive"

    const/4 v1, 0x1

    .line 107
    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->getBooleanResouceFromLockPkg(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private shouldOverrideText(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "override_screen_sync_text"

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->getBooleanResouceFromLockPkg(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 67
    iget-boolean v0, p0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->mShouldOverrideText:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    const p1, 0x7f120bd6

    .line 70
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "nfc_screen_sync_setting"

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 91
    iget-boolean v0, p0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->mIsLockTypeSensitive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120be9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 92
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->mShouldOverrideText:Z

    if-eqz v0, :cond_2

    .line 93
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120be8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 95
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120bea

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 77
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 78
    iget-boolean v0, p0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->mIsLockTypeSensitive:Z

    const-string v1, "ScreenSyncPreferenceController"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    sget-boolean v0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "updateState: isSecure=false"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    const-string v1, "somc.nfc_screen_sync_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 85
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 79
    :cond_2
    :goto_0
    sget-boolean p0, Lcom/sonymobile/settings/nfc/ScreenSyncPreferenceController;->DBG:Z

    if-eqz p0, :cond_3

    const-string p0, "updateState: isSecure=true"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x1

    .line 80
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void
.end method
