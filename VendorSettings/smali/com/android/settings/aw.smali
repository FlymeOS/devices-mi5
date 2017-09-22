.class Lcom/android/vendorsettings/aw;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic dG:Lcom/android/vendorsettings/av;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/av;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/vendorsettings/aw;->dG:Lcom/android/vendorsettings/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/vendorsettings/aw;->dG:Lcom/android/vendorsettings/av;

    invoke-virtual {v0}, Lcom/android/vendorsettings/av;->dismiss()V

    .line 643
    return-void
.end method
