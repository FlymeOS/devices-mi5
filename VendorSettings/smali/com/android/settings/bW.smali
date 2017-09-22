.class Lcom/android/vendorsettings/bW;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic kD:Lcom/android/vendorsettings/DevelopmentSettings;

.field final synthetic kG:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/DevelopmentSettings;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/android/vendorsettings/bW;->kD:Lcom/android/vendorsettings/DevelopmentSettings;

    iput-object p2, p0, Lcom/android/vendorsettings/bW;->kG:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/android/vendorsettings/bW;->kD:Lcom/android/vendorsettings/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/DevelopmentSettings;->a(Lcom/android/vendorsettings/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v0, p0, Lcom/android/vendorsettings/bW;->kG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1921
    return-void

    .line 1920
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
