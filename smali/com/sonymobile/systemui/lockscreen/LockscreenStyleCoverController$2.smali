.class Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$2;
.super Ljava/lang/Object;
.source "LockscreenStyleCoverController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$2;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$2;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-static {v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->access$400(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$2;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-static {v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->access$400(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;

    if-eqz v1, :cond_0

    .line 98
    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$2;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->isStyleCoverViewSelectedAndClosed()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;->onStyleCoverClosed(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
