.class public Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsHelper;
.super Ljava/lang/Object;
.source "LockscreenStatisticsHelper.java"


# static fields
.field private static final mDeviceNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "H82"

    const-string v1, "H92"

    const-string v2, "H81"

    const-string v3, "H91"

    const-string v4, "H83"

    const-string v5, "H93"

    const-string v6, "H84"

    const-string v7, "H94"

    const-string v8, "J81"

    const-string v9, "J91"

    const-string v10, "J82"

    const-string v11, "J92"

    .line 32
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsHelper;->mDeviceNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAmbientDisplayReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;
    .locals 3

    .line 131
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;

    new-instance v1, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;

    invoke-direct {v1}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;-><init>()V

    const-string v2, "user"

    .line 134
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;-><init>(Landroid/content/Context;Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;Landroid/os/UserManager;)V

    return-object v0
.end method

.method private static getDoubleTapToLockscreenReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;
    .locals 1

    .line 176
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsDoubleTapToLockscreenUsageReporter;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsDoubleTapToLockscreenUsageReporter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static getFingerprintCountReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;
    .locals 3

    .line 72
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintCountReporter;

    new-instance v1, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;

    invoke-direct {v1}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;-><init>()V

    const-string v2, "user"

    .line 75
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintCountReporter;-><init>(Landroid/content/Context;Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;Landroid/os/UserManager;)V

    return-object v0
.end method

.method private static getPhotoPlaybackReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;
    .locals 1

    .line 119
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPhotoPlaybackReporter;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPhotoPlaybackReporter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getReporters(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-static {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsHelper;->getFingerprintCountReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsHelper;->getSmartLockReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getReportersWeekly(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->isPhotoPlaybackApplicationInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-static {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsHelper;->getPhotoPlaybackReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    invoke-static {}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsHelper;->isSupportedDeviceVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-static {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsHelper;->getAmbientDisplayReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsHelper;->getStickerReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_1
    invoke-static {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsHelper;->getDoubleTapToLockscreenReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getSmartLockReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;
    .locals 3

    .line 86
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsSmartLockReporter;

    new-instance v1, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;

    invoke-direct {v1}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;-><init>()V

    const-string v2, "user"

    .line 89
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsSmartLockReporter;-><init>(Landroid/content/Context;Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;Landroid/os/UserManager;)V

    return-object v0
.end method

.method private static getStickerReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;
    .locals 3

    .line 161
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsStickerReporter;

    new-instance v1, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;

    invoke-direct {v1}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;-><init>()V

    const-string v2, "user"

    .line 164
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsStickerReporter;-><init>(Landroid/content/Context;Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;Landroid/os/UserManager;)V

    return-object v0
.end method

.method private static isSupportedDeviceVersion()Z
    .locals 6

    const-string v0, "ro.semc.product.device"

    const-string v1, "default"

    .line 145
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    sget-object v1, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsHelper;->mDeviceNames:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 147
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method
