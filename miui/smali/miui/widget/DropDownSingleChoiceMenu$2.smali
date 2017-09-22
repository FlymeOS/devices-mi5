.class Lmiui/widget/DropDownSingleChoiceMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DropDownSingleChoiceMenu;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qo:Lmiui/widget/DropDownSingleChoiceMenu;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownSingleChoiceMenu;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu$2;->Qo:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$2;->Qo:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-static {v0, p3}, Lmiui/widget/DropDownSingleChoiceMenu;->a(Lmiui/widget/DropDownSingleChoiceMenu;I)I

    .line 90
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$2;->Qo:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-static {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->a(Lmiui/widget/DropDownSingleChoiceMenu;)Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$2;->Qo:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-static {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->a(Lmiui/widget/DropDownSingleChoiceMenu;)Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/DropDownSingleChoiceMenu$2;->Qo:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-interface {v0, v1, p3}, Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;->onItemSelected(Lmiui/widget/DropDownSingleChoiceMenu;I)V

    .line 93
    :cond_0
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$2;->Qo:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-virtual {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->dismiss()V

    .line 94
    return-void
.end method
