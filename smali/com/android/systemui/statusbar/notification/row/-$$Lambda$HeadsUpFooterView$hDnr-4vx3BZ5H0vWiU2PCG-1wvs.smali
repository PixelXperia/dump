.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$HeadsUpFooterView$hDnr-4vx3BZ5H0vWiU2PCG-1wvs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;

.field private final synthetic f$1:Ljava/lang/Runnable;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$HeadsUpFooterView$hDnr-4vx3BZ5H0vWiU2PCG-1wvs;->f$0:Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$HeadsUpFooterView$hDnr-4vx3BZ5H0vWiU2PCG-1wvs;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$HeadsUpFooterView$hDnr-4vx3BZ5H0vWiU2PCG-1wvs;->f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$HeadsUpFooterView$hDnr-4vx3BZ5H0vWiU2PCG-1wvs;->f$0:Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$HeadsUpFooterView$hDnr-4vx3BZ5H0vWiU2PCG-1wvs;->f$1:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$HeadsUpFooterView$hDnr-4vx3BZ5H0vWiU2PCG-1wvs;->f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->lambda$setEntry$0$HeadsUpFooterView(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/view/View;)V

    return-void
.end method
