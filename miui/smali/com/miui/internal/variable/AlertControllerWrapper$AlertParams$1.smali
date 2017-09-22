.class Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->a(Landroid/widget/ListView;I)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic jv:Landroid/widget/ListView;

.field final synthetic jw:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->jw:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p6, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->jv:Landroid/widget/ListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 228
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->jw:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-boolean v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mEditMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->jw:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItems:[Z

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->jw:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItems:[Z

    aget-boolean v1, v1, p1

    .line 231
    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->jv:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 235
    :cond_0
    return-object v0
.end method
