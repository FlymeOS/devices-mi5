.class Lcom/android/vendorsettings/dX;
.super Ljava/lang/Object;
.source "MiuiApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic pY:Lcom/android/vendorsettings/MiuiApnEditor;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiApnEditor;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/vendorsettings/dX;->pY:Lcom/android/vendorsettings/MiuiApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/vendorsettings/dX;->pY:Lcom/android/vendorsettings/MiuiApnEditor;

    invoke-virtual {v0}, Lcom/android/vendorsettings/MiuiApnEditor;->finish()V

    .line 61
    return-void
.end method
