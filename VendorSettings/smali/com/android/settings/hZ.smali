.class Lcom/android/settings/hZ;
.super Landroid/widget/BaseAdapter;
.source "ToggleArrangementFragment.java"


# instance fields
.field final synthetic Be:Lcom/android/settings/ToggleArrangementFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/ToggleArrangementFragment;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/hZ;->Be:Lcom/android/settings/ToggleArrangementFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ToggleArrangementFragment;Lcom/android/settings/hY;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/settings/hZ;-><init>(Lcom/android/settings/ToggleArrangementFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/hZ;->Be:Lcom/android/settings/ToggleArrangementFragment;

    invoke-static {v0}, Lcom/android/settings/ToggleArrangementFragment;->b(Lcom/android/settings/ToggleArrangementFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/hZ;->Be:Lcom/android/settings/ToggleArrangementFragment;

    invoke-static {v0}, Lcom/android/settings/ToggleArrangementFragment;->b(Lcom/android/settings/ToggleArrangementFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/hZ;->Be:Lcom/android/settings/ToggleArrangementFragment;

    invoke-static {v0}, Lcom/android/settings/ToggleArrangementFragment;->b(Lcom/android/settings/ToggleArrangementFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const v3, 0x7f1302c0

    const/4 v5, 0x0

    .line 154
    if-eqz p2, :cond_0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    const/4 p2, 0x0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings/hZ;->Be:Lcom/android/settings/ToggleArrangementFragment;

    invoke-static {v0}, Lcom/android/settings/ToggleArrangementFragment;->b(Lcom/android/settings/ToggleArrangementFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 161
    const/16 v0, 0x1d

    if-ne v2, v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/android/settings/hZ;->Be:Lcom/android/settings/ToggleArrangementFragment;

    invoke-static {v0}, Lcom/android/settings/ToggleArrangementFragment;->c(Lcom/android/settings/ToggleArrangementFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/hZ;->Be:Lcom/android/settings/ToggleArrangementFragment;

    invoke-static {v0}, Lcom/android/settings/ToggleArrangementFragment;->c(Lcom/android/settings/ToggleArrangementFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_2

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/settings/hZ;->Be:Lcom/android/settings/ToggleArrangementFragment;

    invoke-static {v0}, Lcom/android/settings/ToggleArrangementFragment;->d(Lcom/android/settings/ToggleArrangementFragment;)Lcom/android/settings/toggleposition/FixedDividerSortableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/android/settings/hZ;->Be:Lcom/android/settings/ToggleArrangementFragment;

    const v2, 0x7f040159

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/ToggleArrangementFragment;->a(Lcom/android/settings/ToggleArrangementFragment;Landroid/view/View;)Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/android/settings/hZ;->Be:Lcom/android/settings/ToggleArrangementFragment;

    invoke-static {v0}, Lcom/android/settings/ToggleArrangementFragment;->c(Lcom/android/settings/ToggleArrangementFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/hZ;->Be:Lcom/android/settings/ToggleArrangementFragment;

    const v2, 0x7f0c00bd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/hZ;->Be:Lcom/android/settings/ToggleArrangementFragment;

    invoke-static {v4}, Lcom/android/settings/ToggleArrangementFragment;->e(Lcom/android/settings/ToggleArrangementFragment;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/ToggleArrangementFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/android/settings/hZ;->Be:Lcom/android/settings/ToggleArrangementFragment;

    invoke-static {v0}, Lcom/android/settings/ToggleArrangementFragment;->c(Lcom/android/settings/ToggleArrangementFragment;)Landroid/view/View;

    move-result-object p2

    .line 185
    :goto_0
    return-object p2

    .line 171
    :cond_3
    if-nez p2, :cond_4

    .line 172
    iget-object v0, p0, Lcom/android/settings/hZ;->Be:Lcom/android/settings/ToggleArrangementFragment;

    invoke-static {v0}, Lcom/android/settings/ToggleArrangementFragment;->d(Lcom/android/settings/ToggleArrangementFragment;)Lcom/android/settings/toggleposition/FixedDividerSortableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 173
    const v1, 0x7f04015a

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 174
    const v0, 0x7f1302ba

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/hZ;->Be:Lcom/android/settings/ToggleArrangementFragment;

    invoke-static {v1}, Lcom/android/settings/ToggleArrangementFragment;->d(Lcom/android/settings/ToggleArrangementFragment;)Lcom/android/settings/toggleposition/FixedDividerSortableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getListenerForStartingSort()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/hZ;->Be:Lcom/android/settings/ToggleArrangementFragment;

    invoke-static {v0}, Lcom/android/settings/ToggleArrangementFragment;->d(Lcom/android/settings/ToggleArrangementFragment;)Lcom/android/settings/toggleposition/FixedDividerSortableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->uH()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 179
    :cond_4
    const v0, 0x7f130061

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    const v1, 0x7f130060

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 182
    invoke-static {v2, v0}, Lmiui/app/ToggleManager;->updateTextView(ILandroid/widget/TextView;)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/hZ;->Be:Lcom/android/settings/ToggleArrangementFragment;

    invoke-static {v0}, Lcom/android/settings/ToggleArrangementFragment;->f(Lcom/android/settings/ToggleArrangementFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
