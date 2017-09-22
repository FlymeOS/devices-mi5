.class Lcom/android/vendorsettings/dR;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic pL:Lcom/android/vendorsettings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MasterClear;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/vendorsettings/dR;->pL:Lcom/android/vendorsettings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/vendorsettings/dR;->pL:Lcom/android/vendorsettings/MasterClear;

    invoke-static {v0}, Lcom/android/vendorsettings/MasterClear;->b(Lcom/android/vendorsettings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 165
    return-void
.end method
