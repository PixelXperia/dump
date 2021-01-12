.class Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;
.super Ljava/lang/Object;
.source "ClockPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectionTimeOut"
.end annotation


# instance fields
.field private final mClockPickerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;",
            ">;"
        }
    .end annotation
.end field

.field private mForSelectedPageIndex:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)V
    .locals 1

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 459
    iput v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;->mForSelectedPageIndex:I

    .line 468
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;->mClockPickerView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;->mClockPickerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 489
    iget p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;->mForSelectedPageIndex:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    .line 490
    invoke-static {v0, p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->access$100(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;I)V

    :cond_1
    return-void
.end method

.method public setForSelectedPageIndex(I)V
    .locals 0

    .line 477
    iput p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;->mForSelectedPageIndex:I

    return-void
.end method
