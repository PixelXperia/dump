.class Lcom/android/systemui/recents/LegacyRecentsImpl$9;
.super Ljava/lang/Object;
.source "LegacyRecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/LegacyRecentsImpl;->onBusEvent(Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

.field final synthetic val$event:Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/LegacyRecentsImpl;Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$9;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    iput-object p2, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$9;->val$event:Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$9;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    invoke-static {v0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->access$000(Lcom/android/systemui/recents/LegacyRecentsImpl;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$9;->val$event:Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;

    iget-boolean p0, p0, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;->waitingForTransitionStart:Z

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->setWaitingForTransitionStartEvent(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Recents"

    const-string v1, "Callback failed"

    .line 657
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
