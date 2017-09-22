.class Lcom/android/vendorsettings/ad/b;
.super Ljava/lang/Object;
.source "AdServiceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic ER:Lcom/android/vendorsettings/ad/AdServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ad/AdServiceSettings;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/vendorsettings/ad/b;->ER:Lcom/android/vendorsettings/ad/AdServiceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/vendorsettings/ad/b;->ER:Lcom/android/vendorsettings/ad/AdServiceSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/ad/AdServiceSettings;->jw()V

    .line 51
    const/4 v0, 0x1

    return v0
.end method
