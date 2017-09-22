.class Lcom/android/vendorsettings/eq;
.super Ljava/lang/Object;
.source "MiuiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic qH:Lcom/android/vendorsettings/MiuiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiDisplaySettings;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/vendorsettings/eq;->qH:Lcom/android/vendorsettings/MiuiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/vendorsettings/eq;->qH:Lcom/android/vendorsettings/MiuiDisplaySettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vendorsettings/MiuiDisplaySettings;->a(Lcom/android/vendorsettings/MiuiDisplaySettings;Z)V

    .line 259
    return-void
.end method
