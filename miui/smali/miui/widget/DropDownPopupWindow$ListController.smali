.class public Lmiui/widget/DropDownPopupWindow$ListController;
.super Lmiui/widget/DropDownPopupWindow$ViewContentController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListController"
.end annotation


# instance fields
.field private ck:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 228
    sget v0, Lcom/miui/internal/R$layout;->drop_down_popup_list:I

    invoke-direct {p0, p1, v0}, Lmiui/widget/DropDownPopupWindow$ListController;-><init>(Landroid/content/Context;I)V

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Lmiui/widget/DropDownPopupWindow$ViewContentController;-><init>(Landroid/content/Context;I)V

    .line 233
    return-void
.end method

.method public constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .locals 1

    .prologue
    .line 220
    sget v0, Lcom/miui/internal/R$layout;->drop_down_popup_list:I

    invoke-direct {p0, p1, v0}, Lmiui/widget/DropDownPopupWindow$ViewContentController;-><init>(Lmiui/widget/DropDownPopupWindow;I)V

    .line 221
    return-void
.end method

.method public constructor <init>(Lmiui/widget/DropDownPopupWindow;I)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lmiui/widget/DropDownPopupWindow$ViewContentController;-><init>(Lmiui/widget/DropDownPopupWindow;I)V

    .line 225
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lmiui/widget/DropDownPopupWindow$ListController;->initContent()V

    .line 241
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$ListController;->ck:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onContentInit(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 236
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow$ListController;->ck:Landroid/widget/ListView;

    .line 237
    return-void
.end method
