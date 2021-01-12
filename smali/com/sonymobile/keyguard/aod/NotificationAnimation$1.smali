.class Lcom/sonymobile/keyguard/aod/NotificationAnimation$1;
.super Ljava/lang/Object;
.source "NotificationAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/aod/NotificationAnimation;
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

    .line 35
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation$1;->this$0:Lcom/sonymobile/keyguard/aod/NotificationAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation$1;->this$0:Lcom/sonymobile/keyguard/aod/NotificationAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->access$002(Lcom/sonymobile/keyguard/aod/NotificationAnimation;I)I

    .line 39
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation$1;->this$0:Lcom/sonymobile/keyguard/aod/NotificationAnimation;

    invoke-static {v0, v1}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->access$102(Lcom/sonymobile/keyguard/aod/NotificationAnimation;Z)Z

    .line 40
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation$1;->this$0:Lcom/sonymobile/keyguard/aod/NotificationAnimation;

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->access$200(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation$1;->this$0:Lcom/sonymobile/keyguard/aod/NotificationAnimation;

    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->access$300(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
