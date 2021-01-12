.class public Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;
.super Ljava/lang/Object;
.source "LockscreenAmbientDisplayController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mShowMusicInfo:Z

.field private mShowMusicInfoObserver:Landroid/database/ContentObserver;

.field private mStickerObserver:Landroid/database/ContentObserver;

.field private mStickerUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController$1;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mShowMusicInfoObserver:Landroid/database/ContentObserver;

    .line 49
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController$2;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mStickerObserver:Landroid/database/ContentObserver;

    .line 38
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mCurrentUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->updateShowMusicInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->updateSticker()V

    return-void
.end method

.method private updateShowMusicInfo()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mCurrentUserId:I

    const/4 v2, 0x1

    const-string v3, "somc.musicinfo_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mShowMusicInfo:Z

    return-void
.end method

.method private updateSticker()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mCurrentUserId:I

    const-string v2, "somc.doze_sticker"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mStickerUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getStickerUri()Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mStickerUri:Ljava/lang/String;

    return-object p0
.end method

.method public initObserver()V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mShowMusicInfoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 61
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mStickerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 62
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mShowMusicInfoObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 63
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mStickerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 64
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "somc.musicinfo_enabled"

    .line 65
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mShowMusicInfoObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mCurrentUserId:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 67
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "somc.doze_sticker"

    .line 68
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mStickerObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mCurrentUserId:I

    invoke-virtual {v0, v1, v4, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final shouldShowMusicInfo()Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->mShowMusicInfo:Z

    return p0
.end method
