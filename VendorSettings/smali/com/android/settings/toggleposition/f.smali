.class Lcom/android/settings/toggleposition/f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragGridView.java"


# instance fields
.field final synthetic arV:Lcom/android/settings/toggleposition/DragGridView;


# direct methods
.method constructor <init>(Lcom/android/settings/toggleposition/DragGridView;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/settings/toggleposition/f;->arV:Lcom/android/settings/toggleposition/DragGridView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/settings/toggleposition/f;->arV:Lcom/android/settings/toggleposition/DragGridView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/toggleposition/DragGridView;->b(Lcom/android/settings/toggleposition/DragGridView;Z)Z

    .line 556
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/settings/toggleposition/f;->arV:Lcom/android/settings/toggleposition/DragGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/toggleposition/DragGridView;->b(Lcom/android/settings/toggleposition/DragGridView;Z)Z

    .line 551
    return-void
.end method
