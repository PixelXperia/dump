.class Lcom/android/systemui/recents/LegacyRecentsImpl$7;
.super Ljava/lang/Object;
.source "LegacyRecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/LegacyRecentsImpl;->onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

.field final synthetic val$event:Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/LegacyRecentsImpl;Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$7;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    iput-object p2, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$7;->val$event:Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$7;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    invoke-static {v0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->access$000(Lcom/android/systemui/recents/LegacyRecentsImpl;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$7;->val$event:Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    iget-object p0, p0, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->initialRect:Landroid/graphics/Rect;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->sendDockingTopTaskEvent(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Recents"

    const-string v1, "Callback failed"

    .line 585
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
