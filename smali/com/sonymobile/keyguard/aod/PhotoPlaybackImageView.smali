.class public Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;
.super Landroid/widget/ImageView;
.source "PhotoPlaybackImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView$onDoubleTapListener;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

.field private mFingerPrintFeedBackView:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

.field private mHeight:I

.field private mListener:Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView$onDoubleTapListener;

.field private mUri:Landroid/net/Uri;

.field private mWidth:I

.field private pathCircle:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)V
    .locals 7

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->pathCircle:Landroid/graphics/Path;

    .line 40
    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mUri:Landroid/net/Uri;

    .line 43
    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mListener:Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView$onDoubleTapListener;

    .line 48
    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mFingerPrintFeedBackView:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    .line 49
    new-instance p1, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    sget-object v3, Lcom/sonymobile/keyguard/aod/-$$Lambda$PhotoPlaybackImageView$9yFSfQmXju9ajFpuJGycz_UsMLI;->INSTANCE:Lcom/sonymobile/keyguard/aod/-$$Lambda$PhotoPlaybackImageView$9yFSfQmXju9ajFpuJGycz_UsMLI;

    new-instance v4, Lcom/sonymobile/keyguard/aod/-$$Lambda$PhotoPlaybackImageView$ivUhI-hZybFsD3ml4VBwDv0eXTY;

    invoke-direct {v4, p0}, Lcom/sonymobile/keyguard/aod/-$$Lambda$PhotoPlaybackImageView$ivUhI-hZybFsD3ml4VBwDv0eXTY;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;)V

    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    return-void
.end method

.method private calculateStartYForPortrait(II)I
    .locals 0

    .line 213
    div-int/lit8 p1, p1, 0x2

    .line 214
    div-int/lit8 p2, p2, 0x3

    if-le p2, p1, :cond_0

    sub-int/2addr p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method private createBitmapFromUri(Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 100
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 103
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->getOrientation(Landroid/net/Uri;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->getRotation(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 107
    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 108
    invoke-direct {p0, v1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->rotateBitmap(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 114
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->cropSquareBitmap()V

    .line 115
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private cropSquareBitmap()V
    .locals 10

    .line 179
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    move v6, v0

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_3

    .line 193
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->calculateStartYForPortrait(II)I

    move-result v3

    move v4, v3

    move v3, v2

    goto :goto_2

    .line 195
    :cond_3
    div-int/lit8 v3, v0, 0x2

    div-int/lit8 v4, v6, 0x2

    sub-int/2addr v3, v4

    move v4, v2

    :goto_2
    const/4 v9, 0x0

    if-ltz v3, :cond_4

    if-ltz v4, :cond_4

    if-lez v0, :cond_4

    if-lez v1, :cond_4

    if-lez v6, :cond_4

    .line 201
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v5, v6

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "PhotoPlaybackImageView"

    const-string v2, "cropSquareBitmap: "

    .line 203
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    iput-object v9, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 207
    :cond_4
    iput-object v9, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mBitmap:Landroid/graphics/Bitmap;

    :goto_3
    return-void
.end method

.method private getOrientation(Landroid/net/Uri;)I
    .locals 3

    const-string v0, "PhotoPlaybackImageView"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 127
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 128
    new-instance p0, Landroid/media/ExifInterface;

    invoke-direct {p0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string p1, "Orientation"

    .line 129
    invoke-virtual {p0, p1, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 136
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 132
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 141
    :catch_1
    :cond_0
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ".getOrientation orientation:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :goto_2
    if-eqz v2, :cond_1

    .line 136
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 138
    :catch_2
    :cond_1
    throw p0
.end method

.method private getRotation(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x10e

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 p0, 0xb4

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$new$0(Z)V
    .locals 0

    return-void
.end method

.method private performDoubleTap()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackSharedPreferences;->setPhotoplaybackSharedPrefAlbumShown(Landroid/content/Context;)V

    .line 236
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->isAlbumApplicationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->showOnAlbum()V

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackSharedPreferences;->setPhotoplaybackSharedPrefIntroShown(Landroid/content/Context;)V

    .line 251
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->showIntroduction()V

    :goto_0
    return-void
.end method

.method private rotateBitmap(Landroid/graphics/Matrix;)V
    .locals 7

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 170
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PhotoPlaybackImageView"

    const-string v0, "rotateBitmap: "

    .line 174
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private showIntroduction()V
    .locals 11

    .line 275
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 276
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/sonymobile/keyguard/aod/PhotoPlaybackIntroductionActivity;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 279
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 280
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x10000000

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 279
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "PhotoPlaybackImageView"

    const-string v0, "Unable to start PhotoPlaybackIntroductionActivity"

    .line 287
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showOnAlbum()V
    .locals 11

    .line 260
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 261
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/sonymobile/keyguard/aod/LaunchAlbumActivity;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 262
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "URI"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 265
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x10000000

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 264
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "PhotoPlaybackImageView"

    const-string v0, "Unable to start LaunchAlbumActivity"

    .line 270
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$1$PhotoPlaybackImageView()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->isAlbumApplicationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mFingerPrintFeedBackView:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->showAlbumDisabledMessage(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "PhotoPlaybackImageView"

    const-string v1, "call performDoubleTap!!!!!"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mListener:Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView$onDoubleTapListener;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView$onDoubleTapListener;->onDoubleTap()V

    .line 58
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->performDoubleTap()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".onDraw: mWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoPlaybackImageView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->pathCircle:Landroid/graphics/Path;

    iget v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mHeight:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 82
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->pathCircle:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 83
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 69
    iput p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mWidth:I

    .line 70
    iput p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mHeight:I

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".onSizeChanged: w = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoPlaybackImageView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setOnDoubleTapListener(Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView$onDoubleTapListener;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mListener:Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView$onDoubleTapListener;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)Z
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->mUri:Landroid/net/Uri;

    .line 93
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->createBitmapFromUri(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method
