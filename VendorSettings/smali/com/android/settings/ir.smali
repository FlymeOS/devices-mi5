.class Lcom/android/vendorsettings/ir;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/android/vendorsettings/iq;


# instance fields
.field private BH:Lcom/android/vendorsettings/il;

.field final synthetic Br:Lcom/android/vendorsettings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)V
    .locals 2

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/vendorsettings/ir;->Br:Lcom/android/vendorsettings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 284
    new-instance v0, Lcom/android/vendorsettings/il;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/vendorsettings/il;-><init>(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;Lcom/android/vendorsettings/iq;Lcom/android/vendorsettings/id;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ir;->BH:Lcom/android/vendorsettings/il;

    .line 285
    invoke-virtual {p0}, Lcom/android/vendorsettings/ir;->load()V

    .line 286
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;Lcom/android/vendorsettings/id;)V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/ir;-><init>(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method


# virtual methods
.method public al(I)Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 305
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/vendorsettings/ir;->BH:Lcom/android/vendorsettings/il;

    invoke-static {v1}, Lcom/android/vendorsettings/il;->a(Lcom/android/vendorsettings/il;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public b(Lcom/android/vendorsettings/io;)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/vendorsettings/ir;->BH:Lcom/android/vendorsettings/il;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/il;->b(Lcom/android/vendorsettings/io;)V

    .line 290
    return-void
.end method

.method public d(II)Lcom/android/vendorsettings/io;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/vendorsettings/ir;->BH:Lcom/android/vendorsettings/il;

    invoke-static {v0}, Lcom/android/vendorsettings/il;->a(Lcom/android/vendorsettings/il;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/io;

    return-object v0
.end method

.method public synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/ir;->d(II)Lcom/android/vendorsettings/io;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 317
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/vendorsettings/ir;->Br:Lcom/android/vendorsettings/TrustedCredentialsSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/ir;->d(II)Lcom/android/vendorsettings/io;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/ir;->BH:Lcom/android/vendorsettings/il;

    invoke-static {v2}, Lcom/android/vendorsettings/il;->b(Lcom/android/vendorsettings/il;)Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    invoke-static {v0, v1, v2, p4, p5}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->a(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/io;Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/vendorsettings/ir;->BH:Lcom/android/vendorsettings/il;

    invoke-static {v0}, Lcom/android/vendorsettings/il;->a(Lcom/android/vendorsettings/il;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 298
    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 301
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/ir;->al(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/vendorsettings/ir;->BH:Lcom/android/vendorsettings/il;

    invoke-static {v0}, Lcom/android/vendorsettings/il;->a(Lcom/android/vendorsettings/il;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/vendorsettings/ir;->BH:Lcom/android/vendorsettings/il;

    invoke-static {v0}, Lcom/android/vendorsettings/il;->a(Lcom/android/vendorsettings/il;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 326
    if-nez p3, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/vendorsettings/ir;->Br:Lcom/android/vendorsettings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 329
    invoke-static {v0, p4}, Lcom/android/vendorsettings/iC;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 332
    :cond_0
    const v0, 0x1020016

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/ir;->al(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 334
    iget-object v2, p0, Lcom/android/vendorsettings/ir;->Br:Lcom/android/vendorsettings/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->a(Lcom/android/vendorsettings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 335
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    const v1, 0x7f0c03be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 340
    :goto_0
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 342
    return-object p3

    .line 338
    :cond_1
    const v1, 0x7f0c03bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public i(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    .prologue
    .line 360
    invoke-static {p1}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->e(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)I

    move-result v0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 356
    new-instance v0, Lcom/android/vendorsettings/im;

    iget-object v1, p0, Lcom/android/vendorsettings/ir;->BH:Lcom/android/vendorsettings/il;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/im;-><init>(Lcom/android/vendorsettings/il;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/im;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 357
    return-void
.end method
