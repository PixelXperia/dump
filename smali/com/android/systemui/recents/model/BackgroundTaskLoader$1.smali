.class Lcom/android/systemui/recents/model/BackgroundTaskLoader$1;
.super Ljava/lang/Object;
.source "BackgroundTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/BackgroundTaskLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/BackgroundTaskLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/BackgroundTaskLoader;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader$1;->this$0:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 119
    iget-object p0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader$1;->this$0:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    invoke-static {p0}, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->access$000(Lcom/android/systemui/recents/model/BackgroundTaskLoader;)Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;->onIdleChanged(Z)V

    return-void
.end method
