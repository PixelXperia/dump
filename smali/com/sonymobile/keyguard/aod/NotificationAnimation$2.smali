.class Lcom/sonymobile/keyguard/aod/NotificationAnimation$2;
.super Ljava/lang/Object;
.source "NotificationAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/aod/NotificationAnimation;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/aod/NotificationAnimation;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation$2;->this$0:Lcom/sonymobile/keyguard/aod/NotificationAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation$2;->this$0:Lcom/sonymobile/keyguard/aod/NotificationAnimation;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->access$102(Lcom/sonymobile/keyguard/aod/NotificationAnimation;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation$2;->this$0:Lcom/sonymobile/keyguard/aod/NotificationAnimation;

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->access$008(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)I

    .line 57
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation$2;->this$0:Lcom/sonymobile/keyguard/aod/NotificationAnimation;

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->access$100(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation$2;->this$0:Lcom/sonymobile/keyguard/aod/NotificationAnimation;

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->access$000(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 59
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation$2;->this$0:Lcom/sonymobile/keyguard/aod/NotificationAnimation;

    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->access$200(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 60
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation$2;->this$0:Lcom/sonymobile/keyguard/aod/NotificationAnimation;

    invoke-static {p1}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->access$408(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)I

    .line 64
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation$2;->this$0:Lcom/sonymobile/keyguard/aod/NotificationAnimation;

    invoke-static {p1}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->access$400(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    .line 65
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation$2;->this$0:Lcom/sonymobile/keyguard/aod/NotificationAnimation;

    invoke-static {p1}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->access$600(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation$2;->this$0:Lcom/sonymobile/keyguard/aod/NotificationAnimation;

    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->access$500(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
