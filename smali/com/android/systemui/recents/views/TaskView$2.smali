.class Lcom/android/systemui/recents/views/TaskView$2;
.super Landroid/util/FloatProperty;
.source "TaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/systemui/recents/views/TaskView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/recents/views/TaskView;)Ljava/lang/Float;
    .locals 0

    .line 107
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 99
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskView$2;->get(Lcom/android/systemui/recents/views/TaskView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/systemui/recents/views/TaskView;F)V
    .locals 0

    .line 102
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/views/TaskView;->setDimAlpha(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 99
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskView$2;->setValue(Lcom/android/systemui/recents/views/TaskView;F)V

    return-void
.end method
