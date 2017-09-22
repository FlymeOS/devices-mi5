.class public Lmiui/widget/DropDownSingleChoiceMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/DropDownPopupWindow$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;
    }
.end annotation


# instance fields
.field private Qk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ql:I

.field private Qm:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

.field private Qn:Lmiui/widget/DropDownPopupWindow;

.field private mContext:Landroid/content/Context;

.field private oh:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic a(Lmiui/widget/DropDownSingleChoiceMenu;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Ql:I

    return p1
.end method

.method static synthetic a(Lmiui/widget/DropDownSingleChoiceMenu;)Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qm:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    return-object v0
.end method

.method static synthetic b(Lmiui/widget/DropDownSingleChoiceMenu;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lmiui/widget/DropDownSingleChoiceMenu;->ej()V

    return-void
.end method

.method private ej()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qn:Lmiui/widget/DropDownPopupWindow;

    .line 111
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qn:Lmiui/widget/DropDownPopupWindow;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qn:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow;->dismiss()V

    .line 107
    :cond_0
    return-void
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qk:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItem()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Ql:I

    return v0
.end method

.method public onAniamtionUpdate(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qm:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qm:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    invoke-interface {v0}, Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;->onDismiss()V

    .line 122
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->oh:Landroid/view/View;

    .line 51
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qk:Ljava/util/List;

    .line 35
    return-void
.end method

.method public setItems([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qk:Ljava/util/List;

    .line 39
    return-void
.end method

.method public setOnMenuListener(Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qm:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    .line 59
    return-void
.end method

.method public setSelectedItem(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Ql:I

    .line 43
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 62
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qk:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->oh:Landroid/view/View;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qn:Lmiui/widget/DropDownPopupWindow;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lmiui/widget/DropDownPopupWindow;

    iget-object v1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmiui/widget/DropDownPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qn:Lmiui/widget/DropDownPopupWindow;

    .line 68
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qn:Lmiui/widget/DropDownPopupWindow;

    new-instance v1, Lmiui/widget/DropDownSingleChoiceMenu$1;

    invoke-direct {v1, p0}, Lmiui/widget/DropDownSingleChoiceMenu$1;-><init>(Lmiui/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownPopupWindow;->setContainerController(Lmiui/widget/DropDownPopupWindow$ContainerController;)V

    .line 81
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qn:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {v0, p0}, Lmiui/widget/DropDownPopupWindow;->setDropDownController(Lmiui/widget/DropDownPopupWindow$Controller;)V

    .line 82
    new-instance v0, Lmiui/widget/DropDownPopupWindow$ListController;

    iget-object v1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qn:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {v0, v1}, Lmiui/widget/DropDownPopupWindow$ListController;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    .line 84
    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow$ListController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 85
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/internal/R$layout;->select_dropdown_popup_singlechoice:I

    iget-object v4, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qk:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    new-instance v1, Lmiui/widget/DropDownSingleChoiceMenu$2;

    invoke-direct {v1, p0}, Lmiui/widget/DropDownSingleChoiceMenu$2;-><init>(Lmiui/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 97
    iget v1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Ql:I

    invoke-virtual {v0, v1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 98
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qn:Lmiui/widget/DropDownPopupWindow;

    iget-object v1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->oh:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownPopupWindow;->setAnchor(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Qn:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow;->show()V

    goto :goto_0
.end method
