.class public Lcom/android/settings/ZonePicker;
.super Lcom/android/settings/BaseListFragment;
.source "ZonePicker.java"


# instance fields
.field private Cq:Z

.field private Cr:Landroid/widget/SimpleAdapter;

.field private Cs:Landroid/widget/SimpleAdapter;

.field private Ct:Lcom/android/settings/iL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/BaseListFragment;-><init>()V

    .line 251
    return-void
.end method

.method private X(Z)V
    .locals 2

    .prologue
    .line 220
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/ZonePicker;->Cr:Landroid/widget/SimpleAdapter;

    .line 222
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/ZonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 223
    iput-boolean p1, p0, Lcom/android/settings/ZonePicker;->Cq:Z

    .line 224
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/ZonePicker;->a(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v0

    .line 225
    if-ltz v0, :cond_0

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/settings/ZonePicker;->setSelection(I)V

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->invalidateOptionsMenu()V

    .line 230
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ZonePicker;->Cs:Landroid/widget/SimpleAdapter;

    goto :goto_0
.end method

.method public static a(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I
    .locals 5

    .prologue
    .line 118
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {p0}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v3

    .line 120
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 122
    invoke-virtual {p0, v1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 123
    const-string v4, "id"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 129
    :goto_1
    return v0

    .line 120
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;
    .locals 6

    .prologue
    const/4 v2, 0x2

    .line 89
    new-array v4, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "gmt"

    aput-object v1, v4, v0

    .line 90
    new-array v5, v2, [I

    fill-array-data v5, :array_0

    .line 94
    if-eqz p1, :cond_0

    const-string v0, "pinyin"

    .line 95
    :goto_0
    new-instance v1, Lcom/android/settings/iK;

    invoke-direct {v1, v0}, Lcom/android/settings/iK;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-static {p0}, Lcom/android/b/c/a;->cQ(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 97
    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    new-instance v0, Landroid/widget/SimpleAdapter;

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 104
    return-object v0

    .line 94
    :cond_0
    const-string v0, "offset"

    goto :goto_0

    .line 90
    nop

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method public static h(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f0401b6

    invoke-static {p0, p1, v0}, Lcom/android/settings/ZonePicker;->b(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static p(Ljava/lang/Object;)Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 138
    check-cast p0, Ljava/util/Map;

    const-string v0, "id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 143
    invoke-super {p0, p1}, Lcom/android/settings/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 146
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/ZonePicker;->h(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ZonePicker;->Cr:Landroid/widget/SimpleAdapter;

    .line 147
    invoke-static {v0, v2}, Lcom/android/settings/ZonePicker;->h(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ZonePicker;->Cs:Landroid/widget/SimpleAdapter;

    .line 150
    invoke-direct {p0, v2}, Lcom/android/settings/ZonePicker;->X(Z)V

    .line 151
    invoke-virtual {p0, v2}, Lcom/android/settings/ZonePicker;->setHasOptionsMenu(Z)V

    .line 152
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    const/4 v0, 0x1

    const v1, 0x7f0c01d2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 177
    const/4 v0, 0x2

    const v1, 0x7f0c01d3

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02012c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 179
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 180
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 167
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseListFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 168
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 169
    const/4 v2, 0x0

    invoke-static {p2, v1, v0, v2}, Lcom/android/settings/iC;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 170
    return-object v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 237
    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 241
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 242
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 243
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/android/settings/ZonePicker;->Ct:Lcom/android/settings/iL;

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/settings/ZonePicker;->Ct:Lcom/android/settings/iL;

    invoke-interface {v1, v0}, Lcom/android/settings/iL;->a(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 211
    invoke-super {p0, p1}, Lcom/android/settings/BaseListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 198
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/ZonePicker;->X(Z)V

    goto :goto_0

    .line 202
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/ZonePicker;->X(Z)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 184
    iget-boolean v0, p0, Lcom/android/settings/ZonePicker;->Cq:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 186
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 189
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
