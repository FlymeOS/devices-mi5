.class Lcom/android/vendorsettings/toggleposition/e;
.super Ljava/lang/Object;
.source "DragGridView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic arV:Lcom/android/vendorsettings/toggleposition/DragGridView;

.field final synthetic arW:I

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/toggleposition/DragGridView;Landroid/view/ViewTreeObserver;I)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/vendorsettings/toggleposition/e;->arV:Lcom/android/vendorsettings/toggleposition/DragGridView;

    iput-object p2, p0, Lcom/android/vendorsettings/toggleposition/e;->val$observer:Landroid/view/ViewTreeObserver;

    iput p3, p0, Lcom/android/vendorsettings/toggleposition/e;->arW:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/vendorsettings/toggleposition/e;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 475
    iget-object v0, p0, Lcom/android/vendorsettings/toggleposition/e;->arV:Lcom/android/vendorsettings/toggleposition/DragGridView;

    iget-object v1, p0, Lcom/android/vendorsettings/toggleposition/e;->arV:Lcom/android/vendorsettings/toggleposition/DragGridView;

    invoke-static {v1}, Lcom/android/vendorsettings/toggleposition/DragGridView;->h(Lcom/android/vendorsettings/toggleposition/DragGridView;)I

    move-result v1

    iget v2, p0, Lcom/android/vendorsettings/toggleposition/e;->arW:I

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/toggleposition/DragGridView;->a(Lcom/android/vendorsettings/toggleposition/DragGridView;II)V

    .line 476
    iget-object v0, p0, Lcom/android/vendorsettings/toggleposition/e;->arV:Lcom/android/vendorsettings/toggleposition/DragGridView;

    iget v1, p0, Lcom/android/vendorsettings/toggleposition/e;->arW:I

    invoke-static {v0, v1}, Lcom/android/vendorsettings/toggleposition/DragGridView;->a(Lcom/android/vendorsettings/toggleposition/DragGridView;I)I

    .line 477
    const/4 v0, 0x1

    return v0
.end method
