.class Lcom/android/vendorsettings/display/e;
.super Ljava/lang/Object;
.source "FluencyModeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Yi:Lcom/android/vendorsettings/display/FluencyModeListPreference;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/display/FluencyModeListPreference;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/vendorsettings/display/e;->Yi:Lcom/android/vendorsettings/display/FluencyModeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 115
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/display/e;->Yi:Lcom/android/vendorsettings/display/FluencyModeListPreference;

    invoke-static {v0}, Lcom/android/vendorsettings/display/FluencyModeListPreference;->a(Lcom/android/vendorsettings/display/FluencyModeListPreference;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lt p2, v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/display/e;->Yi:Lcom/android/vendorsettings/display/FluencyModeListPreference;

    invoke-virtual {v0, p2}, Lcom/android/vendorsettings/display/FluencyModeListPreference;->setValueIndex(I)V

    .line 120
    iget-object v0, p0, Lcom/android/vendorsettings/display/e;->Yi:Lcom/android/vendorsettings/display/FluencyModeListPreference;

    invoke-static {v0, p2}, Lcom/android/vendorsettings/display/FluencyModeListPreference;->a(Lcom/android/vendorsettings/display/FluencyModeListPreference;I)I

    .line 121
    iget-object v0, p0, Lcom/android/vendorsettings/display/e;->Yi:Lcom/android/vendorsettings/display/FluencyModeListPreference;

    invoke-static {v0}, Lcom/android/vendorsettings/display/FluencyModeListPreference;->b(Lcom/android/vendorsettings/display/FluencyModeListPreference;)I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/android/vendorsettings/display/e;->Yi:Lcom/android/vendorsettings/display/FluencyModeListPreference;

    invoke-static {v0, p2}, Lcom/android/vendorsettings/display/FluencyModeListPreference;->b(Lcom/android/vendorsettings/display/FluencyModeListPreference;I)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/display/e;->Yi:Lcom/android/vendorsettings/display/FluencyModeListPreference;

    invoke-virtual {v0}, Lcom/android/vendorsettings/display/FluencyModeListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0
.end method
