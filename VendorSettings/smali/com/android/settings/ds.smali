.class Lcom/android/vendorsettings/ds;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nW:Lcom/android/vendorsettings/HomeSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/HomeSettings;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/vendorsettings/ds;->nW:Lcom/android/vendorsettings/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/vendorsettings/ds;->nW:Lcom/android/vendorsettings/HomeSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/HomeSettings;->c(Lcom/android/vendorsettings/HomeSettings;)Lcom/android/vendorsettings/du;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/du;->setChecked(Z)V

    .line 232
    return-void
.end method
