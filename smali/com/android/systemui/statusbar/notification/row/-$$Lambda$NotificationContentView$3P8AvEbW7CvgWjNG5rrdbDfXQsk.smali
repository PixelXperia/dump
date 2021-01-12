.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationContentView$3P8AvEbW7CvgWjNG5rrdbDfXQsk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationContentView$3P8AvEbW7CvgWjNG5rrdbDfXQsk;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationContentView$3P8AvEbW7CvgWjNG5rrdbDfXQsk;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationContentView$3P8AvEbW7CvgWjNG5rrdbDfXQsk;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationContentView$3P8AvEbW7CvgWjNG5rrdbDfXQsk;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->lambda$applyMultiWindowButton$0$NotificationContentView(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
