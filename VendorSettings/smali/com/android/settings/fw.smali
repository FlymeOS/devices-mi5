.class Lcom/android/settings/fw;
.super Ljava/lang/Object;
.source "MiuiTetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ue:Lcom/android/settings/MiuiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiTetherSettings;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/settings/fw;->ue:Lcom/android/settings/MiuiTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/settings/fw;->ue:Lcom/android/settings/MiuiTetherSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/MiuiTetherSettings;->a(Lcom/android/settings/MiuiTetherSettings;I)V

    .line 403
    return-void
.end method
