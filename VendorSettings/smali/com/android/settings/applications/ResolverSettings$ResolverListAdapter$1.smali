.class Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter$1;
.super Ljava/lang/Object;
.source "ResolverSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic MQ:Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;I)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter$1;->MQ:Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;

    iput p2, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter$1;->MQ:Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MO:Lcom/android/vendorsettings/applications/ResolverSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ResolverSettings;->d(Lcom/android/vendorsettings/applications/ResolverSettings;)Lmiui/widget/DynamicListView;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->startDragging(I)V

    .line 186
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
