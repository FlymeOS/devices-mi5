.class Lcom/android/settings/toggleposition/i;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FixedDividerSortableListView.java"


# instance fields
.field final synthetic asq:Lcom/android/settings/toggleposition/FixedDividerSortableListView;


# direct methods
.method constructor <init>(Lcom/android/settings/toggleposition/FixedDividerSortableListView;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/settings/toggleposition/i;->asq:Lcom/android/settings/toggleposition/FixedDividerSortableListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/settings/toggleposition/i;->asq:Lcom/android/settings/toggleposition/FixedDividerSortableListView;

    invoke-static {v0, p1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(Lcom/android/settings/toggleposition/FixedDividerSortableListView;Landroid/view/MotionEvent;)Z

    .line 441
    return-void
.end method
