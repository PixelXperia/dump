.class public Lcom/android/settings/appearance/TopLevelAppearancePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TopLevelAppearancePreferenceController.java"


# instance fields
.field private final XPERIA_HOME_PACKAGE_NAME:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mIsOledDevice:Z

.field private final mIsXperiaHomeInstalled:Z

.field private final mSummaryOled:Ljava/lang/CharSequence;

.field private final mSummaryWithXperiaHome:Ljava/lang/CharSequence;

.field private final mSummaryWithoutXperiaHome:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "com.sonymobile.home"

    .line 20
    iput-object p2, p0, Lcom/android/settings/appearance/TopLevelAppearancePreferenceController;->XPERIA_HOME_PACKAGE_NAME:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/android/settings/appearance/TopLevelAppearancePreferenceController;->mContext:Landroid/content/Context;

    .line 30
    invoke-direct {p0, p2}, Lcom/android/settings/appearance/TopLevelAppearancePreferenceController;->isAppInstalled(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/appearance/TopLevelAppearancePreferenceController;->mIsXperiaHomeInstalled:Z

    .line 32
    new-instance p2, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v0, p0, Lcom/android/settings/appearance/TopLevelAppearancePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/appearance/TopLevelAppearancePreferenceController;->mIsOledDevice:Z

    const p2, 0x7f120174

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/appearance/TopLevelAppearancePreferenceController;->mSummaryWithXperiaHome:Ljava/lang/CharSequence;

    const p2, 0x7f120175

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/appearance/TopLevelAppearancePreferenceController;->mSummaryWithoutXperiaHome:Ljava/lang/CharSequence;

    const p2, 0x7f120176

    .line 38
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/appearance/TopLevelAppearancePreferenceController;->mSummaryOled:Ljava/lang/CharSequence;

    return-void
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 2

    .line 55
    iget-object p0, p0, Lcom/android/settings/appearance/TopLevelAppearancePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 57
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 58
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_0

    move v0, v1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/android/settings/appearance/TopLevelAppearancePreferenceController;->mIsXperiaHomeInstalled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/appearance/TopLevelAppearancePreferenceController;->mSummaryWithXperiaHome:Ljava/lang/CharSequence;

    goto :goto_0

    .line 49
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/appearance/TopLevelAppearancePreferenceController;->mIsOledDevice:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/appearance/TopLevelAppearancePreferenceController;->mSummaryOled:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/appearance/TopLevelAppearancePreferenceController;->mSummaryWithoutXperiaHome:Ljava/lang/CharSequence;

    :goto_0
    return-object p0
.end method
