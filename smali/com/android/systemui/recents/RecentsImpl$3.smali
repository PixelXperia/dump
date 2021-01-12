.class Lcom/android/systemui/recents/RecentsImpl$3;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


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

    .line 274
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl$3;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 279
    invoke-static {}, Lcom/android/systemui/recents/LegacyRecentsImpl;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object p0

    const/16 p1, 0x50

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    :cond_0
    return-void
.end method
