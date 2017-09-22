.class Lcom/android/settings/bX;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic kD:Lcom/android/settings/DevelopmentSettings;

.field final synthetic kG:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 1907
    iput-object p1, p0, Lcom/android/settings/bX;->kD:Lcom/android/settings/DevelopmentSettings;

    iput-object p2, p0, Lcom/android/settings/bX;->kG:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1910
    const-string v0, "persist.sys.miui_optimization"

    iget-object v1, p0, Lcom/android/settings/bX;->kG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1912
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1913
    iget-object v1, p0, Lcom/android/settings/bX;->kD:Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/DevelopmentSettings;->startActivity(Landroid/content/Intent;)V

    .line 1914
    return-void
.end method
