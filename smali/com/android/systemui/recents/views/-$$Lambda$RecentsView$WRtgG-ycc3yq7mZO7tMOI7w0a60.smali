.class public final synthetic Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$WRtgG-ycc3yq7mZO7tMOI7w0a60;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/views/RecentsView;

.field private final synthetic f$1:Lcom/android/systemui/recents/model/TaskStack;

.field private final synthetic f$2:Lcom/android/systemui/shared/recents/model/Task;

.field private final synthetic f$3:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$WRtgG-ycc3yq7mZO7tMOI7w0a60;->f$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$WRtgG-ycc3yq7mZO7tMOI7w0a60;->f$1:Lcom/android/systemui/recents/model/TaskStack;

    iput-object p3, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$WRtgG-ycc3yq7mZO7tMOI7w0a60;->f$2:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p4, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$WRtgG-ycc3yq7mZO7tMOI7w0a60;->f$3:Lcom/android/systemui/recents/views/TaskView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$WRtgG-ycc3yq7mZO7tMOI7w0a60;->f$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$WRtgG-ycc3yq7mZO7tMOI7w0a60;->f$1:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v2, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$WRtgG-ycc3yq7mZO7tMOI7w0a60;->f$2:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$WRtgG-ycc3yq7mZO7tMOI7w0a60;->f$3:Lcom/android/systemui/recents/views/TaskView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/systemui/recents/views/RecentsView;->lambda$startTaskActivity$2$RecentsView(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Boolean;)V

    return-void
.end method
