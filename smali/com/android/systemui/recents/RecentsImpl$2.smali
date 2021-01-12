.class Lcom/android/systemui/recents/RecentsImpl$2;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl$2;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 268
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsImpl$2;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZI)V

    return-void
.end method
