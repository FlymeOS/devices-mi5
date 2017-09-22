.class Lcom/android/vendorsettings/cx;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic lR:Lcom/android/vendorsettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/vendorsettings/cx;->lR:Lcom/android/vendorsettings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/vendorsettings/cx;->lR:Lcom/android/vendorsettings/DisplaySettings;

    invoke-static {v0}, Lcom/android/vendorsettings/DisplaySettings;->a(Lcom/android/vendorsettings/DisplaySettings;)Lcom/android/vendorsettings/WarnedListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/WarnedListPreference;->click()V

    .line 452
    return-void
.end method
