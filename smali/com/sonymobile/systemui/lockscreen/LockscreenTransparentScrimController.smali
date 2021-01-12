.class public Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;
.super Ljava/lang/Object;
.source "LockscreenTransparentScrimController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LockscreenTransparentScrimController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mHasArtwork:Z

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mSeeThroughScrim:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->mHasArtwork:Z

    .line 35
    iput-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->mSeeThroughScrim:Z

    .line 45
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->mCurrentUserId:I

    return-void
.end method

.method private shouldSeeThroughScrim()Z
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->mContext:Landroid/content/Context;

    const-string v1, "wallpaper"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 91
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 95
    :try_start_0
    iget v3, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->mCurrentUserId:I

    invoke-interface {v0, v1, v3}, Landroid/app/IWallpaperManager;->getWallpaperIdForUser(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 106
    :try_start_1
    iget v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->mCurrentUserId:I

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 114
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    .line 108
    :catch_0
    sget-object p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->TAG:Ljava/lang/String;

    const-string v0, "Exception thrown for getWallpaperInfo()"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    .line 98
    :catch_1
    sget-object p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->TAG:Ljava/lang/String;

    const-string v0, "Exception thrown for getWallpaperIdForUser()"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private updateSeeThroughScrimState()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v0, :cond_1

    .line 83
    iget-boolean v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->mSeeThroughScrim:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->mHasArtwork:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateSeeThroughScrimState(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-void
.end method

.method public final updateHasArtwork(Z)V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->shouldSeeThroughScrim()Z

    move-result v0

    .line 73
    iget-boolean v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->mSeeThroughScrim:Z

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->mHasArtwork:Z

    if-eq v1, p1, :cond_1

    .line 74
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->mHasArtwork:Z

    .line 75
    iput-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->mSeeThroughScrim:Z

    .line 76
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenTransparentScrimController;->updateSeeThroughScrimState()V

    :cond_1
    return-void
.end method
