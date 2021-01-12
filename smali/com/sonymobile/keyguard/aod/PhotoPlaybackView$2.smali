.class Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$2;
.super Ljava/lang/Object;
.source "PhotoPlaybackView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$2;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 1

    .line 129
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$2;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$302(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;Z)Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$2;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$302(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;Z)Z

    .line 120
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$2;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$400(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$2;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$500(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$2;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$600(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$2;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    .line 121
    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$700(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$2;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$700(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$2;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-static {v0, v1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$402(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;Z)Z

    .line 123
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$2;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$800(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V

    :cond_1
    return-void
.end method
