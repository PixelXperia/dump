.class public Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;
.super Landroid/widget/FrameLayout;
.source "SkinningBridgeClockLayout.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private mPlace:Ljava/lang/String;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;->mPlace:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;->mTextureView:Landroid/view/TextureView;

    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 66
    sget v0, Lcom/android/systemui/R$id;->somc_customizable_texture_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 71
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;->mTextureView:Landroid/view/TextureView;

    .line 72
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 73
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;->mTextureView:Landroid/view/TextureView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    return-void

    .line 68
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Layout must contain a TextureView"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    .line 81
    invoke-static {p1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->onSurfaceAvailable(Landroid/graphics/SurfaceTexture;)V

    .line 82
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;->mPlace:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 83
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getLeft()I

    move-result v2

    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;->mTextureView:Landroid/view/TextureView;

    .line 84
    invoke-virtual {p2}, Landroid/view/TextureView;->getTop()I

    move-result v3

    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getRight()I

    move-result v4

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getBottom()I

    move-result v5

    move-object v0, p1

    .line 83
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->onSurfaceChanged(Landroid/graphics/SurfaceTexture;Ljava/lang/String;IIII)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 93
    invoke-static {p1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public setDoze()V
    .locals 0

    return-void
.end method

.method public setNextAlarmText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPlace(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;->mPlace:Ljava/lang/String;

    return-void
.end method

.method public startClockTicking()V
    .locals 0

    return-void
.end method

.method public stopClockTicking()V
    .locals 0

    return-void
.end method
