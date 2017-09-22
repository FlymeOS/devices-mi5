.class Lcom/android/vendorsettings/fw;
.super Ljava/lang/Object;
.source "MiuiTetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ue:Lcom/android/vendorsettings/MiuiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiTetherSettings;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/vendorsettings/fw;->ue:Lcom/android/vendorsettings/MiuiTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/vendorsettings/fw;->ue:Lcom/android/vendorsettings/MiuiTetherSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vendorsettings/MiuiTetherSettings;->a(Lcom/android/vendorsettings/MiuiTetherSettings;I)V

    .line 403
    return-void
.end method
