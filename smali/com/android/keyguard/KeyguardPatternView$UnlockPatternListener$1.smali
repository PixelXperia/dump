.class Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->onPatternDetected(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;I)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iput p2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardPatternView;->access$1600(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    :cond_0
    return-void
.end method

.method public onChecked(ZI)V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 342
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$502(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    if-nez p1, :cond_1

    .line 344
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget p0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->val$userId:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p0, v0, p2, v1}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->access$1200(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;IZIZ)V

    :cond_1
    return-void
.end method

.method public onEarlyMatched()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1000(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1100(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget p0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->val$userId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, v2, v1, v2}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->access$1200(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;IZIZ)V

    return-void
.end method
