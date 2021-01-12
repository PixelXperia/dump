.class Lcom/android/systemui/recents/LegacyRecentsImpl$10;
.super Ljava/lang/Object;
.source "LegacyRecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/LegacyRecentsImpl;->registerWithSystemUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

.field final synthetic val$processUser:I


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/LegacyRecentsImpl;I)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$10;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    iput p2, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$10;->val$processUser:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$10;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    invoke-static {v0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->access$000(Lcom/android/systemui/recents/LegacyRecentsImpl;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/RecentsImplProxy;

    iget-object v2, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$10;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    .line 696
    invoke-static {v2}, Lcom/android/systemui/recents/LegacyRecentsImpl;->access$700(Lcom/android/systemui/recents/LegacyRecentsImpl;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/RecentsImplProxy;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iget p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$10;->val$processUser:I

    .line 695
    invoke-interface {v0, v1, p0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->registerNonSystemUserCallbacks(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Recents"

    const-string v1, "Failed to register"

    .line 698
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
