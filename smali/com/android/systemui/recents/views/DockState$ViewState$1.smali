.class Lcom/android/systemui/recents/views/DockState$ViewState$1;
.super Landroid/util/IntProperty;
.source "DockState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/DockState$ViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lcom/android/systemui/recents/views/DockState$ViewState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/recents/views/DockState$ViewState;)Ljava/lang/Integer;
    .locals 0

    .line 115
    invoke-static {p1}, Lcom/android/systemui/recents/views/DockState$ViewState;->access$000(Lcom/android/systemui/recents/views/DockState$ViewState;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    check-cast p1, Lcom/android/systemui/recents/views/DockState$ViewState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/DockState$ViewState$1;->get(Lcom/android/systemui/recents/views/DockState$ViewState;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/systemui/recents/views/DockState$ViewState;I)V
    .locals 0

    .line 109
    invoke-static {p1, p2}, Lcom/android/systemui/recents/views/DockState$ViewState;->access$002(Lcom/android/systemui/recents/views/DockState$ViewState;I)I

    .line 110
    iget-object p0, p1, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 106
    check-cast p1, Lcom/android/systemui/recents/views/DockState$ViewState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/DockState$ViewState$1;->setValue(Lcom/android/systemui/recents/views/DockState$ViewState;I)V

    return-void
.end method
