.class Lcom/android/vendorsettings/display/h;
.super Ljava/lang/Object;
.source "FluencyModeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Yi:Lcom/android/vendorsettings/display/FluencyModeListPreference;

.field final synthetic Yj:I


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/display/FluencyModeListPreference;I)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/vendorsettings/display/h;->Yi:Lcom/android/vendorsettings/display/FluencyModeListPreference;

    iput p2, p0, Lcom/android/vendorsettings/display/h;->Yj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/vendorsettings/display/h;->Yi:Lcom/android/vendorsettings/display/FluencyModeListPreference;

    iget v1, p0, Lcom/android/vendorsettings/display/h;->Yj:I

    invoke-static {v0, v1}, Lcom/android/vendorsettings/display/FluencyModeListPreference;->c(Lcom/android/vendorsettings/display/FluencyModeListPreference;I)V

    .line 140
    return-void
.end method
