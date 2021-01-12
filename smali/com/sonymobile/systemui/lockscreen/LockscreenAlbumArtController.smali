.class public Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;
.super Ljava/lang/Object;
.source "LockscreenAlbumArtController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mShowAlbumArt:Z

.field private mShowAlbumArtObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController$1;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;->mShowAlbumArtObserver:Landroid/database/ContentObserver;

    .line 35
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;->mCurrentUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;->updateShowAlbumArt()V

    return-void
.end method

.method private updateShowAlbumArt()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;->mCurrentUserId:I

    const/4 v2, 0x1

    const-string v3, "somc.albumart_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;->mShowAlbumArt:Z

    return-void
.end method


# virtual methods
.method public initShowAlbumArtObserver()V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;->mShowAlbumArtObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 51
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;->mShowAlbumArtObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 52
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "somc.albumart_enabled"

    .line 53
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;->mShowAlbumArtObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;->mCurrentUserId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final onUserSwitched(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;->mCurrentUserId:I

    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;->initShowAlbumArtObserver()V

    return-void
.end method

.method public final shouldShowAlbumArt()Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAlbumArtController;->mShowAlbumArt:Z

    return p0
.end method
