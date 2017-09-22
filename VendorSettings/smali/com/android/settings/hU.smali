.class Lcom/android/vendorsettings/hU;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic AU:Lcom/android/vendorsettings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/TetherSettings;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/vendorsettings/hU;->AU:Lcom/android/vendorsettings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/vendorsettings/hU;->AU:Lcom/android/vendorsettings/TetherSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vendorsettings/TetherSettings;->a(Lcom/android/vendorsettings/TetherSettings;I)V

    .line 596
    return-void
.end method
