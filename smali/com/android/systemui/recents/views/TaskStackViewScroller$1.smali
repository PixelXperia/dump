.class Lcom/android/systemui/recents/views/TaskStackViewScroller$1;
.super Landroid/util/FloatProperty;
.source "TaskStackViewScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskStackViewScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/systemui/recents/views/TaskStackViewScroller;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/recents/views/TaskStackViewScroller;)Ljava/lang/Float;
    .locals 0

    .line 66
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewScroller$1;->get(Lcom/android/systemui/recents/views/TaskStackViewScroller;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/systemui/recents/views/TaskStackViewScroller;F)V
    .locals 0

    .line 61
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 58
    check-cast p1, Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskStackViewScroller$1;->setValue(Lcom/android/systemui/recents/views/TaskStackViewScroller;F)V

    return-void
.end method
