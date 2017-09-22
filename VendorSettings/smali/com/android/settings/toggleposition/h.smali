.class Lcom/android/vendorsettings/toggleposition/h;
.super Ljava/lang/Object;
.source "FixedDividerSortableListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic asq:Lcom/android/vendorsettings/toggleposition/FixedDividerSortableListView;

.field private asr:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/toggleposition/FixedDividerSortableListView;)V
    .locals 4

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/vendorsettings/toggleposition/h;->asq:Lcom/android/vendorsettings/toggleposition/FixedDividerSortableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/vendorsettings/toggleposition/h;->asq:Lcom/android/vendorsettings/toggleposition/FixedDividerSortableListView;

    invoke-virtual {v1}, Lcom/android/vendorsettings/toggleposition/FixedDividerSortableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/toggleposition/i;

    iget-object v3, p0, Lcom/android/vendorsettings/toggleposition/h;->asq:Lcom/android/vendorsettings/toggleposition/FixedDividerSortableListView;

    invoke-direct {v2, v3}, Lcom/android/vendorsettings/toggleposition/i;-><init>(Lcom/android/vendorsettings/toggleposition/FixedDividerSortableListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/vendorsettings/toggleposition/h;->asr:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/vendorsettings/toggleposition/h;->asr:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 95
    const/4 v0, 0x1

    return v0
.end method
